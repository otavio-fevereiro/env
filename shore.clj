(do
    (require '[shore.components])
    (shore.components/create-and-start-system! {})
    nil)

    (use 'catalyst.globals.flutter.animation-controller-test :reload)