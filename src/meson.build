extra_vala_args = []

deps = [
  clapper_dep,
  clapper_gtk_dep,
  gtk4_dep,
  libadwaita_dep
]

resources = gnome.compile_resources(
  'clapper-vala-test-resources',
  'clapper-vala-test.gresources.xml',
  c_name: 'clapper_vala_test'
)

sources = [
  'main.vala',
  'clapper-vala-test.vala',
  resources
]

clapper_features = clapper_dep.get_variable('features').split()

if (clapper_features.contains('mpris'))
  extra_vala_args += ['-D', 'HAVE_MPRIS']
endif

executable(
  meson.project_name(),
  sources,
  dependencies: deps,
  vala_args: extra_vala_args,
  install: true,
)
