class GettingStartedView extends Backbone.View

    render: ->
        # Scene settings
        width = 400
        height = 600
        # Camera settings
        viewAngle = 45
        aspect = width/height
        near = 0.1
        far = 10000
        # Light source
        pointLight = new THREE.PointLight 0xFFFFFF
        position = x: 10, y: 50, z: 130
        pointLight.position.x = position.x
        pointLight.position.y = position.y
        pointLight.position.z = position.z
        # Sphere Geometry
        radius = 50
        segments = 16
        rings = 16
        sphereGeometry = new THREE.SphereGeometry(radius, segments, rings)
        sphereMaterial = new THREE.MeshLambertMaterial color: 0xCC0000
        sphere = new THREE.Mesh(sphereGeometry, sphereMaterial)
        # Rendering Objects
        renderer = new THREE.WebGLRenderer
        camera = new THREE.PerspectiveCamera(viewAngle, aspect, near, far)
        scene = new THREE.Scene

        # Configuration
        scene.add camera
        scene.add pointLight
        scene.add sphere
        camera.position.z = 300
        renderer.setSize width, height

        # DOM Handling
        @$el.html renderer.domElement
        renderer.render(scene, camera)
        @

module.exports = GettingStartedView
