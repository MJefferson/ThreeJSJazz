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
        # ThreeJS Objects
        renderer = new THREE.WebGLRenderer
        camera = new THREE.PerspectiveCamera(viewAngle, aspect, near, far)
        scene = new THREE.Scene

        # Configuration
        scene.add camera
        camera.position.z = 300
        renderer.setSize width, height

        # DOM Handling
        @$el.html renderer.domElement

        @

module.exports = GettingStartedView
