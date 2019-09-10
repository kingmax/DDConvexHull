import pymel.core as pm
pm.ls(sl=1)[0].getShape()

def test(inputMesh):
    convexHullNode = cmds.createNode('DDConvexHull')
    outputMeshNode = cmds.createNode('mesh', n='outputHullShape')
    cmds.connectAttr('%s.outMesh' % inputMesh, '%s.input[0].inputPolymesh' % convexHullNode)
    cmds.connectAttr('%s.output' % convexHullNode, '%s.inMesh' % outputMeshNode)
    
test(pm.ls(sl=1)[0].getShape())