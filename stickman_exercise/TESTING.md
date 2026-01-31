# 測試指南 (Testing Guide)

本專案包含自動化測試與手動測試方法。

## 1. 自動化測試 (Automated Tests)

我們使用了 Flutter 內建的測試框架來驗證核心邏輯與 UI 組件。

### 運行所有測試
在 `stickman_exercise` 目錄下執行：
```bash
flutter test
```

### 測試說明
- `test/unit_test.dart`: 驗證 `StickmanPose` 的內插值 (interpolation) 邏輯。
- `test/widget_test.dart`: 驗證首頁 UI 是否正確載入並顯示運動列表。

## 2. 手動測試 (Manual Testing)

### Web 平台
您可以啟動本地開發伺服器進行測試：
```bash
flutter run -d chrome
```

### 行動平台 (Android/iOS)
如果您已連接設備或模擬器：
```bash
flutter run
```

## 3. 測試要點
- **動畫流暢度**: 觀察火柴人在運動過程中的動作是否平滑。
- **計時器準確性**: 確認倒數計時是否與設定的時間一致。
- **暫停與繼續**: 在運動過程中點擊「暫停」並確認動畫與計時器皆停止，點擊「繼續」後恢復。
- **導覽流程**: 完成運動後應自動跳轉至結算頁面，且能透過按鈕返回首頁。
