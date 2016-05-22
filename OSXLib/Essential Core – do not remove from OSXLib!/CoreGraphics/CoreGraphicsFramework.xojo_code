#tag Module
Protected Module CoreGraphicsFramework
	#tag ExternalMethod, Flags = &h0
		Declare Sub CGColorRelease Lib coreGraphicsLibName (id as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = CoreGraphicsLibName, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphicsPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreGraphics", Scope = Public
	#tag EndConstant


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
