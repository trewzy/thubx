local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")

--vars
local player = game.Players.LocalPlayer
local Mouse = player:GetMouse()
local viewport = game.Workspace.CurrentCamera.ViewportSize
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Library = {}

function Library:validate(defaults, options)
	local options = options or {}
	for i, v in pairs(defaults) do
		if options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function Library:tween(object, goal, callback)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:Init(options)
	options = Library:validate({
		name = "UI Library Test"
	}, options or {})

	local GUI = {
		CurrentTab = nil
	}

	--main
	do
		GUI["1"] = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);
		GUI["1"]["Name"] = [[Xhub]];
		GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
		GUI["1"]["IgnoreGuiInset"] = true;
		
		GUI["a4"] = Instance.new("TextButton", GUI["1"]);
		GUI["a4"]["TextWrapped"] = true;
		GUI["a4"]["BorderSizePixel"] = 0;
		GUI["a4"]["TextSize"] = 26;
		GUI["a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["a4"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		GUI["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GUI["a4"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["a4"]["Size"] = UDim2.new(0, 200, 0, 35);
		GUI["a4"]["Name"] = [[Minimize]];
		GUI["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["a4"]["Text"] = [[nil]];
		GUI["a4"]["Position"] = UDim2.new(0, 2, 1, -2);

		GUI["a5"] = Instance.new("UIStroke", GUI["a4"]);
		GUI["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		GUI["a5"]["Thickness"] = 1.25;
		GUI["a5"]["Color"] = Color3.fromRGB(66, 66, 66);

		GUI["a6"] = Instance.new("UICorner", GUI["a4"]);
		GUI["a6"]["CornerRadius"] = UDim.new(0, 4);

		GUI["2"] = Instance.new("Frame", GUI["1"]);
		GUI["2"]["Active"] = true;
		GUI["2"]["BorderSizePixel"] = 0;
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(41,41,41);
		GUI["2"]["AnchorPoint"] = Vector2.new(0, 0);
		GUI["2"]["Size"] = UDim2.new(0, 450, 0, 350);
		GUI["2"]["Position"] = UDim2.fromOffset((viewport.X/2) - (GUI["2"].Size.X.Offset / 2.5), (viewport.Y/2.5) - (GUI["2"].Size.Y.Offset / 2.5));
		GUI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["2"]["Name"] = [[Main]];
		GUI["2"]["Draggable"] = true;

		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["CornerRadius"] = UDim.new(0, 6);

		GUI["4"] = Instance.new("Frame", GUI["2"]);
		GUI["4"]["ZIndex"] = 0;
		GUI["4"]["BorderSizePixel"] = 0;
		GUI["4"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["4"]["Name"] = [[DropShadowHolder]];
		GUI["4"]["BackgroundTransparency"] = 1;

		GUI["5"] = Instance.new("ImageLabel", GUI["4"]);
		GUI["5"]["ZIndex"] = 0;
		GUI["5"]["BorderSizePixel"] = 0;
		GUI["5"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		GUI["5"]["ScaleType"] = Enum.ScaleType.Slice;
		GUI["5"]["ImageTransparency"] = 0.5;
		GUI["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["5"]["Image"] = [[rbxassetid://6014261993]];
		GUI["5"]["Size"] = UDim2.new(1, 47, 1, 47);
		GUI["5"]["BackgroundTransparency"] = 1;
		GUI["5"]["Name"] = [[DropShadow]];
		GUI["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		GUI["6"] = Instance.new("Frame", GUI["2"]);
		GUI["6"]["BorderSizePixel"] = 0;
		GUI["6"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		GUI["6"]["Size"] = UDim2.new(1, 0, 0, 35);
		GUI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["6"]["Name"] = [[TopBar]];

		GUI["7"] = Instance.new("UICorner", GUI["6"]);
		GUI["7"]["CornerRadius"] = UDim.new(0, 6);

		GUI["8"] = Instance.new("Frame", GUI["6"]);
		GUI["8"]["BorderSizePixel"] = 0;
		GUI["8"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		GUI["8"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["8"]["Size"] = UDim2.new(1, 0, 0.5, 0);
		GUI["8"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["8"]["Name"] = [[Bottom]];

		GUI["9"] = Instance.new("TextLabel", GUI["6"]);
		GUI["9"]["BorderSizePixel"] = 0;
		GUI["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["9"]["TextSize"] = 14;
		GUI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GUI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["9"]["BackgroundTransparency"] = 1;
		GUI["9"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		GUI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["9"]["Text"] = options["name"]
		GUI["9"]["Name"] = options["name"]

		GUI["a"] = Instance.new("UIPadding", GUI["9"]);
		GUI["a"]["PaddingLeft"] = UDim.new(0, 16);

		GUI["b"] = Instance.new("ImageButton", GUI["6"]);
		GUI["b"]["BorderSizePixel"] = 0;
		GUI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["b"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["b"]["Image"] = [[rbxassetid://17622160036]];
		GUI["b"]["Size"] = UDim2.new(0, 20, 0, 20);
		GUI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["b"]["BackgroundTransparency"] = 1;
		GUI["b"]["Name"] = [[ExitBttn]];
		GUI["b"]["Position"] = UDim2.new(1, -8, 0, 8);

		GUI["c"] = Instance.new("Frame", GUI["6"]);
		GUI["c"]["BorderSizePixel"] = 0;
		GUI["c"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
		GUI["c"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["c"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["c"]["Name"] = [[Line]];

		GUI["1b"] = Instance.new("Frame", GUI["2"]);
		GUI["1b"]["BorderSizePixel"] = 0;
		GUI["1b"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
		GUI["1b"]["Size"] = UDim2.new(1, -145, 1, -48);
		GUI["1b"]["Position"] = UDim2.new(0, 145, 0, 42);
		GUI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["1b"]["Name"] = [[ContentContainer]];
		GUI["1b"]["BackgroundTransparency"] = 1;
	end
	--navigation
	
		GUI["b"].MouseButton1Click:Connect(function()
			GUI["1"]:Destroy()
		end)
		
		GUI["a4"].MouseButton1Click:Connect(function()
			 if GUI["2"].Visible == true then
				  GUI["2"].Visible = false
			      GUI["a4"].Text = "Show"
			 elseif GUI["2"].Visible == false then
			      GUI["2"].Visible = true
			      GUI["a4"].Text = "Hide"
			 end
		end)

	do 
		GUI["d"] = Instance.new("Frame", GUI["2"]);
		GUI["d"]["BorderSizePixel"] = 0;
		GUI["d"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
		GUI["d"]["Size"] = UDim2.new(0, 140, 1, -36);
		GUI["d"]["Position"] = UDim2.new(0, 0, 0, 36);
		GUI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["d"]["Name"] = [[Navigation]];

		GUI["e"] = Instance.new("UICorner", GUI["d"]);
		GUI["e"]["CornerRadius"] = UDim.new(0, 4);

		GUI["f"] = Instance.new("Frame", GUI["d"]);
		GUI["f"]["BorderSizePixel"] = 0;
		GUI["f"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
		GUI["f"]["Size"] = UDim2.new(1, 0, 0, 20);
		GUI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["f"]["Name"] = [[Hide]];

		GUI["10"] = Instance.new("Frame", GUI["d"]);
		GUI["10"]["BorderSizePixel"] = 0;
		GUI["10"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
		GUI["10"]["Size"] = UDim2.new(0, 2, 1, 0);
		GUI["10"]["Position"] = UDim2.new(1, -2, 0, 0);
		GUI["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["10"]["Name"] = [[Hide2]];

		GUI["1a"] = Instance.new("Frame", GUI["d"]);
		GUI["1a"]["BorderSizePixel"] = 0;
		GUI["1a"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
		GUI["1a"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["1a"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["1a"]["Name"] = [[Line]];

		GUI["11"] = Instance.new("Frame", GUI["d"]);
		GUI["11"]["BorderSizePixel"] = 0;
		GUI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["11"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["11"]["Name"] = [[Holder]];
		GUI["11"]["BackgroundTransparency"] = 1;

		GUI["12"] = Instance.new("UIListLayout", GUI["11"]);
		GUI["12"]["Padding"] = UDim.new(0, 1);
		GUI["12"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		GUI["13"] = Instance.new("UIPadding", GUI["11"]);
		GUI["13"]["PaddingTop"] = UDim.new(0, 8);
		GUI["13"]["PaddingBottom"] = UDim.new(0, 8);

	end

	function GUI:CreateTab(options)
		options = Library:validate({
			name = "Preview Tab",
			icon = "rbxassetid://17622755902"
		}, options or {})

		local Tab = {
			Hover = false,
			Active = false
		}

		Tab["17"] = Instance.new("TextLabel", GUI["11"]);
		Tab["17"]["BorderSizePixel"] = 0;
		Tab["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Tab["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["17"]["TextSize"] = 14;
		Tab["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Tab["17"]["TextColor3"] = Color3.fromRGB(200, 200, 200);
		Tab["17"]["BackgroundTransparency"] = 1;
		Tab["17"]["Size"] = UDim2.new(1, 0, 0, 28);
		Tab["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["17"]["Text"] = options.name;
		Tab["17"]["Name"] = [[Inactive]];

		Tab["18"] = Instance.new("UIPadding", Tab["17"]);
		Tab["18"]["PaddingLeft"] = UDim.new(0, 29);

		Tab["19"] = Instance.new("ImageLabel", Tab["17"]);
		Tab["19"]["BorderSizePixel"] = 0;
		Tab["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["19"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
		Tab["19"]["AnchorPoint"] = Vector2.new(0, 0.5);
		Tab["19"]["Image"] = options.icon;
		Tab["19"]["Size"] = UDim2.new(0, 20, 0, 20);
		Tab["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["19"]["BackgroundTransparency"] = 1;
		Tab["19"]["Position"] = UDim2.new(0, -27, 0.5, 0);

		Tab["1c"] = Instance.new("ScrollingFrame", GUI["1b"]);
		Tab["1c"]["Active"] = true;
		Tab["1c"]["BorderSizePixel"] = 0;
		Tab["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["1c"]["Name"] = options.name;
		Tab["1c"]["Size"] = UDim2.new(0, 300, 1, 0);
		Tab["1c"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["1c"]["ScrollBarThickness"] = 0;
		Tab["1c"]["BackgroundTransparency"] = 1;

		Tab["1d"] = Instance.new("UIListLayout", Tab["1c"]);
		Tab["1d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
		Tab["1d"]["Padding"] = UDim.new(0, 6);
		Tab["1d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


		--methods

		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end

				Tab.Active = true
				Library:tween(Tab["17"], {TextColor3 = Color3.fromRGB(255, 255, 255)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(255, 255, 255)})
				Library:tween(Tab["17"], {BackgroundTransparency = 0.85})
				Tab["1c"].Visible = true
				print(Tab["1c"].Name)

				GUI.CurrentTab = Tab
			end

		end

		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab.Hover = false

				Library:tween(Tab["17"], {TextColor3 = Color3.fromRGB(200,200,200)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(200,200,200)})
				Library:tween(Tab["17"], {BackgroundTransparency = 1})
				Tab["1c"].Visible = false
			end

		end

		if GUI.CurrentTab == nil then
			Tab:Activate()
		end
		-- Logic
		do
			Tab["17"].MouseEnter:Connect(function()
				Tab.Hover = true

				if not Tab.Active then
					Library:tween(Tab["17"], {TextColor3 = Color3.fromRGB(255,255,255)})
					Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(255,255,255)})
				end
			end)

			Tab["17"].MouseLeave:Connect(function()
				Tab.Hover = false

				if not Tab.Active then
					Library:tween(Tab["17"], {TextColor3 = Color3.fromRGB(200,200,200)})
					Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(200,200,200)})
				end
			end)

			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Tab.Hover then
						Tab:Activate()
					end
				end
			end)
		end

		function Tab:CreateButton(options)
			options = Library:validate({
				name = "Button",
				callback = function() end
			}, options or {})

			local button = {
				hover = false,
				mouseDown = false
			}

			-- render 
			do

				button["1e"] = Instance.new("Frame", Tab["1c"]);
				button["1e"]["BorderSizePixel"] = 0;
				button["1e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
				button["1e"]["Size"] = UDim2.new(0, 295, 0, 32);
				button["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				button["1e"]["Name"] = options.name;

				button["1f"] = Instance.new("UICorner", button["1e"]);
				button["1f"]["CornerRadius"] = UDim.new(0, 4);

				button["20"] = Instance.new("UIStroke", button["1e"]);
				button["20"]["Thickness"] = 1.25;
				button["20"]["Color"] = Color3.fromRGB(66, 66, 66);

				button["21"] = Instance.new("TextLabel", button["1e"]);
				button["21"]["BorderSizePixel"] = 0;
				button["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				button["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				button["21"]["TextSize"] = 14;
				button["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				button["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				button["21"]["BackgroundTransparency"] = 1;
				button["21"]["Size"] = UDim2.new(1, 0, 1, 0);
				button["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				button["21"]["Text"] = options.name;
				button["21"]["Name"] = [[Title]];

				button["22"] = Instance.new("UIPadding", button["21"]);
				button["22"]["PaddingLeft"] = UDim.new(0, 15);

				button["23"] = Instance.new("UIPadding", button["1e"]);
				button["23"]["PaddingTop"] = UDim.new(0, 6);
				button["23"]["PaddingBottom"] = UDim.new(0, 6);

				button["24"] = Instance.new("ImageLabel", button["1e"]);
				button["24"]["BorderSizePixel"] = 0;
				button["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				button["24"]["AnchorPoint"] = Vector2.new(0, 0.5);
				button["24"]["Image"] = [[rbxassetid://17623018334]];
				button["24"]["Size"] = UDim2.new(0, 20, 0, 20);
				button["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				button["24"]["BackgroundTransparency"] = 1;
				button["24"]["Name"] = [[Icon]];
				button["24"]["Position"] = UDim2.new(0, 265, 0.5, 0);
			end

			--methods

			function button:SetText(text)
				button["21"].Text = text
			end

			function button:SetCallback(fn)
				options.callback = fn
			end

			-- logic
			do 
				button["1e"].MouseEnter:Connect(function()
					button.hover = true

					if not button.mouseDown then
						Library:tween(button["20"], {Color = Color3.fromRGB(51,51,51)})
					end
				end)

				button["1e"].MouseLeave:Connect(function()
					button.hover = false 
					if not button.mouseDown then
						Library:tween(button["20"], {Color = Color3.fromRGB(66,66,66)})
					end
				end)

				uis.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and button.hover then
						button.mouseDown = true
						Library:tween(button["1e"], {BackgroundColor3 = Color3.fromRGB(55,55,55)})
						Library:tween(button["20"], {Color = Color3.fromRGB(66,66,66)})
						options.callback()
					end
				end)

				uis.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and button.hover then
						button.mouseDown = false

						if button.hover then
							Library:tween(button["1e"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(button["20"], {Color = Color3.fromRGB(66,66,66)})
						else
							Library:tween(button["1e"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(button["20"], {Color = Color3.fromRGB(51,51,51)})
						end
					end
				end)
			end

			return button
		end
		
		function Tab:CreateToggle(options)
			options = Library:validate({
				title = "hello",
				callback = function() end
			}, options or {})
			
			local toggle = {
				hover = false,
				mouseDown = false,
				state = false
			}
			
			-- render 
			do 
				toggle["50"] = Instance.new("Frame", Tab["1c"]);
				toggle["50"]["BorderSizePixel"] = 0;
				toggle["50"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
				toggle["50"]["Size"] = UDim2.new(0, 295, 0, 30);
				toggle["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["50"]["Name"] = [[ToggleInactive]];

				toggle["51"] = Instance.new("UICorner", toggle["50"]);
				toggle["51"]["CornerRadius"] = UDim.new(0, 4);

				toggle["52"] = Instance.new("UIStroke", toggle["50"]);
				toggle["52"]["Thickness"] = 1.25;
				toggle["52"]["Color"] = Color3.fromRGB(66, 66, 66);

				toggle["53"] = Instance.new("TextLabel", toggle["50"]);
				toggle["53"]["BorderSizePixel"] = 0;
				toggle["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["53"]["TextSize"] = 14;
				toggle["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				toggle["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["53"]["BackgroundTransparency"] = 1;
				toggle["53"]["Size"] = UDim2.new(1, 0, 0, 14);
				toggle["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["53"]["Text"] = options.title;
				toggle["53"]["Name"] = [[Title]];

				toggle["54"] = Instance.new("UIPadding", toggle["53"]);
				toggle["54"]["PaddingLeft"] = UDim.new(0, 15);

				toggle["55"] = Instance.new("UIPadding", toggle["50"]);
				toggle["55"]["PaddingTop"] = UDim.new(0, 6);
				toggle["55"]["PaddingBottom"] = UDim.new(0, 6);

				toggle["56"] = Instance.new("Frame", toggle["50"]);
				toggle["56"]["BorderSizePixel"] = 0;
				toggle["56"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
				toggle["56"]["AnchorPoint"] = Vector2.new(1, 0);
				toggle["56"]["Size"] = UDim2.new(0, 20, 0, 20);
				toggle["56"]["Position"] = UDim2.new(1, -10, 0, -1);
				toggle["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["56"]["Name"] = [[CheckmarkHolder]];

				toggle["57"] = Instance.new("UICorner", toggle["56"]);
				toggle["57"]["CornerRadius"] = UDim.new(0, 3);

				toggle["58"] = Instance.new("UIStroke", toggle["56"]);
				toggle["58"]["Thickness"] = 1.25;
				toggle["58"]["Color"] = Color3.fromRGB(64, 64, 64);

				toggle["59"] = Instance.new("ImageLabel", toggle["56"]);
				toggle["59"]["BorderSizePixel"] = 0;
				toggle["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["59"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				toggle["59"]["Image"] = [[rbxassetid://17624643441]];
				toggle["59"]["Size"] = UDim2.new(1, 0, 1, 0);
				toggle["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["59"]["BackgroundTransparency"] = 1;
				toggle["59"]["ImageTransparency"] = 1;
				toggle["59"]["Name"] = [[Checkmark]];
				toggle["59"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
			end
			
			--methods
			
			function toggle:Toggle(b)
				if b == nil then
					toggle.state = not toggle.state
				else
					toggle.state = b
				end
				
				if toggle.state then
					Library:tween(toggle["56"], {BackgroundColor3 = Color3.fromRGB(115, 191, 92)})
					Library:tween(toggle["59"], {ImageTransparency = 0})
				else
					Library:tween(toggle["56"], {BackgroundColor3 = Color3.fromRGB(56,56,56)})
					Library:tween(toggle["59"], {ImageTransparency = 1})
				end
				
				
				options.callback(toggle.state)
			end
			
			--logic
			do
				toggle["50"].MouseEnter:Connect(function()
					toggle.hover = true

					Library:tween(toggle["52"], {Color = Color3.fromRGB(120,120,120)})
				end)

				toggle["50"].MouseLeave:Connect(function()
					toggle.hover = false 
					if not toggle.mouseDown then
						Library:tween(toggle["52"], {Color = Color3.fromRGB(66,66,66)})
					end
				end)

				uis.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and toggle.hover then
						toggle.mouseDown = true
						Library:tween(toggle["50"], {BackgroundColor3 = Color3.fromRGB(55,55,55)})
						Library:tween(toggle["52"], {Color = Color3.fromRGB(175,175,175)})
						toggle:Toggle()
					end
				end)

				uis.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and toggle.hover then
						toggle.mouseDown = false

						if toggle.hover then
							Library:tween(toggle["50"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(toggle["52"], {Color = Color3.fromRGB(66,66,66)})
						else
							Library:tween(toggle["50"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(toggle["52"], {Color = Color3.fromRGB(55,55,55)})
						end
					end
				end)
			end
			
			return toggle
		end

		function Tab:CreateSlider(options)
			options = Library:validate({
				name = "chicken",
				min = 0,
				max = 100,
				default = 50,
				callback = function(v) print(v) end
			}, options or {})

			local slider = {
				mouseDown = false,
				hover = false,
				Connection = nil
			}

			--render
			do 
				slider["33"] = Instance.new("Frame", Tab["1c"]);
				slider["33"]["BorderSizePixel"] = 0;
				slider["33"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
				slider["33"]["Size"] = UDim2.new(0, 295, 0, 44);
				slider["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				slider["33"]["Name"] = [[Slider]];

				slider["34"] = Instance.new("UICorner", slider["33"]);
				slider["34"]["CornerRadius"] = UDim.new(0, 4);

				slider["35"] = Instance.new("UIStroke", slider["33"]);
				slider["35"]["Thickness"] = 1.25;
				slider["35"]["Color"] = Color3.fromRGB(66, 66, 66);

				slider["36"] = Instance.new("TextLabel", slider["33"]);
				slider["36"]["BorderSizePixel"] = 0;
				slider["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				slider["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				slider["36"]["TextSize"] = 14;
				slider["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				slider["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				slider["36"]["BackgroundTransparency"] = 1;
				slider["36"]["Size"] = UDim2.new(1, 0, 1, -10);
				slider["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				slider["36"]["Text"] = [[Slider]];
				slider["36"]["Name"] = [[Title]];

				slider["37"] = Instance.new("UIPadding", slider["36"]);
				slider["37"]["PaddingLeft"] = UDim.new(0, 15);

				slider["38"] = Instance.new("UIPadding", slider["33"]);
				slider["38"]["PaddingTop"] = UDim.new(0, 6);
				slider["38"]["PaddingBottom"] = UDim.new(0, 6);

				slider["39"] = Instance.new("TextLabel", slider["33"]);
				slider["39"]["TextWrapped"] = true;
				slider["39"]["BorderSizePixel"] = 0;
				slider["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				slider["39"]["TextSize"] = 14;
				slider["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				slider["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				slider["39"]["BackgroundTransparency"] = 1;
				slider["39"]["AnchorPoint"] = Vector2.new(0, 0.5);
				slider["39"]["Size"] = UDim2.new(0, 35, 0, 35);
				slider["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				slider["39"]["Text"] = tostring(options.default);
				slider["39"]["Name"] = [[Value]];
				slider["39"]["Position"] = UDim2.new(0, 255, 0.5, -4);

				slider["3a"] = Instance.new("Frame", slider["33"]);
				slider["3a"]["BorderSizePixel"] = 0;
				slider["3a"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
				slider["3a"]["AnchorPoint"] = Vector2.new(0, 1);
				slider["3a"]["Size"] = UDim2.new(1, -25, 0, 5);
				slider["3a"]["Position"] = UDim2.new(0, 12, 1, 0);
				slider["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				slider["3a"]["Name"] = [[SliderBack]];

				slider["3b"] = Instance.new("UICorner", slider["3a"]);
				slider["3b"]["CornerRadius"] = UDim.new(0, 6);

				slider["3c"] = Instance.new("UIStroke", slider["3a"]);
				slider["3c"]["Thickness"] = 1.25;
				slider["3c"]["Color"] = Color3.fromRGB(64, 64, 64);

				slider["3d"] = Instance.new("Frame", slider["3a"]);
				slider["3d"]["BorderSizePixel"] = 0;
				slider["3d"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
				slider["3d"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				slider["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			end

			--methods
			function slider:SetValue(v)
				if v ~= nil then
					local percentage = math.clamp((Mouse.X - slider["3a"].AbsolutePosition.X) / (slider["3a"].AbsoluteSize.X), 0, 1)
					local value = math.floor(((options.max - options.min) * percentage) + options.min)

					slider["39"].Text = tostring(value)
					slider["3d"].Size = UDim2.fromScale(percentage,1)
				else
					slider["39"].Text = tostring(v)
					slider["3d"].Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)
				end
				options.callback(slider:GetValue())
			end

			function slider:GetValue()
               return tonumber(slider["39"].Text)
			end

			--logic
			do
				slider["33"].MouseEnter:Connect(function()
					slider.hover = true

					Library:tween(slider["35"], {Color = Color3.fromRGB(180,180,180)})
					Library:tween(slider["3c"], {Color = Color3.fromRGB(180,180,180)})
					Library:tween(slider["3d"], {BackgroundColor3 = Color3.fromRGB(180,180,180)})
				end)

				slider["33"].MouseLeave:Connect(function()
					slider.hover = false 
					if not slider.mouseDown then
						Library:tween(slider["35"], {Color = Color3.fromRGB(66,66,66)})
						Library:tween(slider["3c"], {Color = Color3.fromRGB(66,66,66)})
						Library:tween(slider["3d"], {BackgroundColor3 = Color3.fromRGB(51,51,51)})
					end
				end)

				uis.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and slider.hover then
						slider.mouseDown = true
						Library:tween(slider["33"], {BackgroundColor3 = Color3.fromRGB(55,55,55)})
						Library:tween(slider["35"], {Color = Color3.fromRGB(200,200,200)})
						Library:tween(slider["36"], {BackgroundColor3 = Color3.fromRGB(200,200,200)})
						Library:tween(slider["3d"], {BackgroundColor3 = Color3.fromRGB(200,200,200)})

						if not slider.Connection then
							slider.Connection = runService.RenderStepped:Connect(function()
                                  slider:SetValue(options.default)
							end)
						end
					end
				end)

				uis.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and slider.hover then
						slider.mouseDown = false

						if slider.hover then
							Library:tween(slider["33"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(slider["35"], {Color = Color3.fromRGB(66,66,66)})
							Library:tween(slider["3c"], {Color = Color3.fromRGB(66,66,66)})
							Library:tween(slider["3d"], {BackgroundColor3 = Color3.fromRGB(51,51,51)})
						else
							Library:tween(slider["33"], {BackgroundColor3 = Color3.fromRGB(31,31,31)})
							Library:tween(slider["35"], {Color = Color3.fromRGB(51,51,51)})
							Library:tween(slider["3c"], {Color = Color3.fromRGB(51,51,51)})
							Library:tween(slider["3d"], {BackgroundColor3 = Color3.fromRGB(51,51,51)})
						end

						if slider.Connection then slider.Connection:Disconnect() end
						slider.Connection = nil
					end
				end)
			end

			return slider

		end

		return Tab
	end

	return GUI
end
