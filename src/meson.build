deps = [
  dependency('clapper-0.0', version: '>= 0.5.2', required: true),
  dependency('clapper-gtk-0.0', version: '>= 0.5.2', required: true),
  dependency('gtk4', version: '>= 4.10.0', required: true),
  dependency('libadwaita-1', version: '>= 1.0.0', required: true),
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

executable(
  meson.project_name(),
  sources,
  dependencies: deps,
  install: true,
)
