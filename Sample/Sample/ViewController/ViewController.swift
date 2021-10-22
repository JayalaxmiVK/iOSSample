//
//  ViewController.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var stackViewHeightConstraint: NSLayoutConstraint!
    // MARK: - properties
    var currentIndex = 0
    var currentIndexPage = 0
    var pageCount: Int = 3
    var pages = [UIViewController]()
    var pageViewController: UIPageViewController?
    var pendingIndex: Int?
    let searchController = UISearchController(searchResultsController: nil)
    let viewModel = ViewModel()
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPages()
        setStackViewHeightConstraint()
    }

    // MARK: - Helpers
    func setUpPages() {
        for _ in 0 ..< pageCount {
            if let VCObj = storyboard?.instantiateViewController(withIdentifier: Constants.pageContentVCIdentifier)
                as? PageContentViewController {
                pages.append(VCObj)
            }
        }
        setupPageController()
    }

    func setStackViewHeightConstraint() {
        stackViewHeightConstraint.constant = viewModel.getStackViewHeight(currentPageIndex: currentIndexPage)
    }

    private func setupPageController() {
        guard let pageController = children[0] as? UIPageViewController else {
            return
        }
        pageController.dataSource = self
        pageController.delegate = self
        pageController.view.backgroundColor = .clear
        let initialVC = pages[0]
        pageController.setViewControllers([initialVC],
                                          direction: .forward, animated: true, completion: nil)
        pageController.didMove(toParent: self)
        pageViewController = pageController
        pageControl.numberOfPages = pages.count
    }
    // MARK: - IBAction
    @IBAction func pageControllerTapped(_ sender: UIPageControl) {
        if sender.currentPage > currentIndex {
            pageViewController!.setViewControllers([pages[sender.currentPage]],
                                                   direction: .forward, animated: true, completion: nil)
        } else {
            pageViewController!.setViewControllers([pages[sender.currentPage]],
                                                   direction: .reverse, animated: true, completion: nil)
        }
        currentIndex = sender.currentPage
    }
}
