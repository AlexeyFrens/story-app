import SwiftUI
import Combine

class AppRouter: ObservableObject {
    @Published var currentScreen: Int = 1
    let totalScreens = 31

    func goToNext() {
        if currentScreen < totalScreens {
            currentScreen += 1
        }
    }
}

struct RouterView: View {
    @StateObject var router = AppRouter()

    var body: some View {
        Group {
            switch router.currentScreen {
//            case 1:  Screen01(onNext: router.goToNext)
//            case 2:  Screen02(onNext: router.goToNext)
//            case 3:  Screen03(onNext: router.goToNext)
//            case 4:  Screen04(onNext: router.goToNext)
//            case 5:  Screen05(onNext: router.goToNext)
//            case 6:  Screen06(onNext: router.goToNext)
//            case 7:  Screen07(onNext: router.goToNext)
//            case 8:  Screen08(onNext: router.goToNext)
//            case 9:  Screen09(onNext: router.goToNext)
//            case 10: Screen10(onNext: router.goToNext)
//            case 11: Screen11(onNext: router.goToNext)
//            case 12: Screen12(onNext: router.goToNext)
//            case 13: Screen13(onNext: router.goToNext)
//            case 14: Screen14(onNext: router.goToNext)
//            case 15: Screen15(onNext: router.goToNext)
//            case 16: Screen16(onNext: router.goToNext)
//            case 17: Screen17(onNext: router.goToNext)
//            case 18: Screen18(onNext: router.goToNext)
//            case 19: Screen19(onNext: router.goToNext)
//            case 20: Screen20(onNext: router.goToNext)
//            case 21: Screen21(onNext: router.goToNext)
//            case 22: Screen22(onNext: router.goToNext)
//            case 23: Screen23(onNext: router.goToNext)
//            case 24: Screen24(onNext: router.goToNext)
//            case 25: Screen25(onNext: router.goToNext)
//            case 26: Screen26(onNext: router.goToNext)
//            case 27: Screen27(onNext: router.goToNext)
//            case 28: Screen28(onNext: router.goToNext)
//            case 29: Screen29(onNext: router.goToNext)
//            case 30: Screen30(onNext: router.goToNext)
            default: Screen31()
            }
        }
    }
}
