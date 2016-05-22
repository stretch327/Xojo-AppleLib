#tag Module
Protected Module QuartzCoreFramework
	#tag ExternalMethod, Flags = &h0
		Declare Function CACurrentMediaTime Lib QuartzCoreLib () As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DConcat Lib QuartzCoreLib (T1 As CATransform3D, T2 As CATransform3D) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DEqualToTransform Lib QuartzCoreLib (t1 as CATransform3D, t2 as CATransform3D) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function CATransform3DIdentity() As CATransform3D
		  return CATransform3DMakeTranslation (0,0,0)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DInvert Lib QuartzCoreLib (T As CATransform3D) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DIsAffine Lib QuartzCoreLib (T As CATransform3D) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DIsIdentity Lib QuartzCoreLib (T As CATransform3D) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DMakeRotation Lib QuartzCoreLib (angle as CGFloat, x as CGFloat, y as CGFloat, z as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DMakeScale Lib QuartzCoreLib (scaleX as CGFloat, scaleY as CGFloat, scaleZ as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function CATransform3DMakeScale(scaleX as double) As CATransform3D
		  return CATransform3DMakeScale(scalex, scaleX, scaleX)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DMakeTranslation Lib QuartzCoreLib (scaleX as CGFloat, scaleY as CGFloat, scaleZ as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DRotate Lib QuartzCoreLib (t as catransform3d, angle as CGFloat, x as CGFloat, y as CGFloat, z as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DScale Lib QuartzCoreLib (t as catransform3d, scaleX as CGFloat, scaleY as CGFloat, scaleZ as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CATransform3DTranslate Lib QuartzCoreLib (T1 As CATransform3D, scaleX as CGFloat, scaleY as CGFloat, scaleZ as CGFloat) As CATransform3D
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function CATransform3DTranslate(T as CATransform3D, DeltaX as double) As CATransform3D
		  return CATransform3DTranslate (t, DeltaX, DeltaX, deltax)
		End Function
	#tag EndMethod


	#tag Constant, Name = QuartzCoreLib, Type = Text, Dynamic = False, Default = \"QuartzCore.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = QuartzCorePath, Type = Text, Dynamic = False, Default = \"com.apple.QuartzCore", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CATransform3D, Flags = &h0
		m11 as CGFloat
		  m12 as CGFloat
		  m13 as CGFloat
		  m14 as CGFloat
		  m21 as CGFloat
		  m22 as CGFloat
		  m23 as CGFloat
		  m24 as CGFloat
		  m31 as CGFloat
		  m32 as CGFloat
		  m33 as CGFloat
		  m34 as CGFloat
		  m41 as CGFloat
		  m42 as CGFloat
		  m43 as CGFloat
		m44 as CGFloat
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
