import { application } from "./application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

// "controllers"という名前で登録されている全てのコントローラーを読み込みます。
// これにより、`calendar_controller.js`が自動的に認識されます。
eagerLoadControllersFrom("controllers", application)
