task.wait(1)

task.spawn(function()
    local data = game.ReplicatedStorage.Remotes:WaitForChild("Data.RF", 10):InvokeServer("getData", game.Players.LocalPlayer.UserId, "Gameplay.Handler (Line 55)")
    local slot = data.Slots[data["Player Info"].currentSlot]
    local badges = slot.Badges
    _G.quickdraw = badges.QuickDraw
    warn(_G.quickdraw)
end)
