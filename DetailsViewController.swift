//
//  DetailsViewController.swift
//  Project20
//
//  Created by Eros M.Lima on 03/02/2020.
//  Copyright © 2020 Eros M.Lima. All rights reserved.
//
import UIKit
import WebKit

class DetailViewController: UIViewController {
	var webView: WKWebView!
	var detailItem: Petition?

	override func loadView() {
		webView = WKWebView()
		view = webView
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		guard let detailItem = detailItem else { return }

        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
	}
}