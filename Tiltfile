load('ext://namespace', 'namespace_create', 'namespace_inject')

namespace = 'azerothcore-wotlk'
namespace_create(namespace)
k8s_namespace(namespace)

local_resource(
    'build-images',
    'docker compose build',
    deps=['.']
)

rendered = helm('./deploy', name=namespace, namespace=namespace)
namespaced = namespace_inject(rendered, namespace)
k8s_yaml(namespaced)

# Now break the Helm output into individual Tilt resources
k8s_resource('ac-worldserver', resource_deps=['build-images', 'ac-db-import-job'])
k8s_resource('ac-authserver', resource_deps=['build-images', 'ac-db-import-job'])
k8s_resource('ac-db-import-job', resource_deps=['build-images', 'ac-database'])
k8s_resource('ac-database', resource_deps=['build-images'])
