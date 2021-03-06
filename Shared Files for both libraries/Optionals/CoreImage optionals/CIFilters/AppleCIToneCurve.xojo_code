#tag Class
Protected Class AppleCIToneCurve
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720746F6E652063757276652061646A7573746D656E742066696C7465722C2073657474696E672074686520496E707574496D61676520616E64206669766520706F696E7473207468617420646566696E6520746865206D617070696E67206F662074686520746F6E652063757276652E
		Sub Constructor(inputImage as picture = nil, Point0X as Double = 0.0, Point0Y as Double = 0.0, Point1X as Double = 0.25, Point1Y as Double = 0.25, Point2X as Double = 0.5, Point2Y as Double = 0.5, Point3X as Double = 0.75, Point3Y as Double = 0.75, Point4X as Double = 1.0, Point4Y as Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIToneCurve
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputPoint0 = FoundationFrameWork.NSMakePoint(point0x, point0y)
		  InputPoint1 = FoundationFrameWork.NSMakePoint(point1x, point1y)
		  InputPoint2 = FoundationFrameWork.NSMakePoint(point2x, point2y)
		  InputPoint3 = FoundationFrameWork.NSMakePoint(point3x, point3y)
		  InputPoint4 = FoundationFrameWork.NSMakePoint(point4x, point4y)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520696E20697473206E617469766520666F726D2E
		#tag Getter
			Get
			  return minputciimage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCIImage = value
			End Set
		#tag EndSetter
		InputCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520636F6E76657274656420746F20616E204170706C65496D616765
		#tag Getter
			Get
			  return new appleimage(InputCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420696D6167652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputImageDict <> nil then return FilterAttributes.InputImageDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputImageDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666972737420706F696E74206F662074686520746F6E652063757276652E2044656661756C7420302E302C20302E30
		#tag Getter
			Get
			  return minputpoint0
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputpoint0 = value
			End Set
		#tag EndSetter
		InputPoint0 As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420706F696E74302070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputPoint0Dict <> nil then return FilterAttributes.InputPoint0Dict.LocalizedDescription
			End Get
		#tag EndGetter
		InputPoint0Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E6420706F696E74206F662074686520746F6E652063757276652E2044656661756C7420302E32352C20302E32352E
		#tag Getter
			Get
			  return minputpoint1
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputpoint1 = value
			End Set
		#tag EndSetter
		InputPoint1 As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420706F696E74312070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputPoint1Dict <> nil then return FilterAttributes.InputPoint1Dict.LocalizedDescription
			End Get
		#tag EndGetter
		InputPoint1Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746869726420706F696E74206F662074686520746F6E652063757276652E2044656661756C7420302E352C20302E352E
		#tag Getter
			Get
			  return minputpoint2
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputpoint2 = value
			End Set
		#tag EndSetter
		InputPoint2 As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420706F696E74322070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputPoint2Dict <> nil then return FilterAttributes.InputPoint2Dict.LocalizedDescription
			End Get
		#tag EndGetter
		InputPoint2Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F7572746820706F696E74206F662074686520746F6E652063757276652E2044656661756C7420302E37352C20302E37352E
		#tag Getter
			Get
			  return minputpoint3
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputpoint3 = value
			End Set
		#tag EndSetter
		InputPoint3 As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420706F696E74332070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputPoint3Dict <> nil then return FilterAttributes.InputPoint3Dict.LocalizedDescription
			End Get
		#tag EndGetter
		InputPoint3Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61737420706F696E74206F662074686520746F6E652063757276652E2044656661756C7420312E302C20312E302E
		#tag Getter
			Get
			  return minputpoint4
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputpoint4 = value
			End Set
		#tag EndSetter
		InputPoint4 As FoundationFrameWork.NSPoint
	#tag EndComputedProperty


	#tag Constant, Name = kCIToneCurve, Type = Text, Dynamic = False, Default = \"CIToneCurve", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputImageDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFilterName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
End Class
#tag EndClass
