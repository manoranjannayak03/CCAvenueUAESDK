//
//  CCAvenueUAESDK.swift
//  CCAvenueUAESDK
//
//  Created by Manoranjan Nayak on 25/09/25.
//
import SwiftUI

final public class CCAvenueUAESDK {
    public static func initiatePayment(from presenter: UIViewController, delegate: CCAvenueUAESDKDelegate? = nil, paymentConfig: PaymentConfig) {
        let merchantParam = MainViewModel().validateMerchantParameter(params: paymentConfig)
        if !merchantParam.isValid {
            var finalResponseDictionary: [String : Any] = [:]
            finalResponseDictionary["statusCode"] = "\(merchantParam.statusCode)"
            finalResponseDictionary["orderStatus"] = "failed"
            finalResponseDictionary["statusMessage"] = merchantParam.errMsg
            delegate?.onTransactionResponse(finalResponseDictionary)
        } else {
            ServiceInfo().setBaseURLFor(enviroment: paymentConfig.environment)
            let coordinator = PaymentCoordinator(delegate: delegate)
            let view = MainView(coordinator: coordinator, paymentConfig: paymentConfig)
            let hosting = UIHostingController(rootView: view)
            coordinator.hostingController = hosting
            hosting.modalPresentationStyle = .fullScreen
            presenter.present(hosting, animated: true, completion: nil)
        }
    }
}
