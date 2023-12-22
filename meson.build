project('clapper-vala-test', ['c', 'vala'],
  version: '0.0.1',
  meson_version: '>= 0.58.0',
  default_options: [
    'warning_level=1',
    'buildtype=debugoptimized',
  ],
)

gnome = import('gnome')

clapper_dep = dependency('clapper-0.0', required: true)
clapper_gtk_dep = dependency('clapper-gtk-0.0', required: true)
gtk4_dep = dependency('gtk4', required: true)
libadwaita_dep = dependency('libadwaita-1', version: '>= 1.0.0', required: true)

subdir('src')
