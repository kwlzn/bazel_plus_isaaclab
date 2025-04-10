
try:
    from omni.kit_app import KitApp
except ImportError:
    import carb
    print(carb.__file__)
