function CircleClick(Button, X, Y)
	local circle = Instance.new("Frame");
	Instance.new("UICorner", circle);
	
	circle.UICorner.CornerRadius = UDim.new(1, 0);
	circle.AnchorPoint = Vector2.new(0.5, 0.5);
	circle.BackgroundColor3 = Color3.fromRGB(0,0,0);
	circle.Position = UDim2.new(0, game.Players.LocalPlayer:GetMouse().X - Button.AbsolutePosition.X, 0, game.Players.LocalPlayer:GetMouse().Y - Button.AbsolutePosition.Y);
	circle.Size = UDim2.new(0, 1, 0, 1);
	circle.Transparency = .8;
	circle.ZIndex = 999
	
	circle.Parent = Button;
	Button.ClipsDescendants = true;
	
	local finalGoal = {};
	finalGoal.Size = UDim2.new(0, (Button.AbsoluteSize.X), 0, (Button.AbsoluteSize.X));
	finalGoal.Transparency = 1;

	local tween = game:GetService("TweenService"):Create(circle, TweenInfo.new(.7, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), finalGoal);
	tween:Play();
end

return CircleClick
