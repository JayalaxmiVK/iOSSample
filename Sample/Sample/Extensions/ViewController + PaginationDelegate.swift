//
//  ViewController + PaginationDelegate.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import Foundation
import UIKit
// MARK: - UIPageViewControllerDataSource

extension ViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController is PageContentViewController {
            let currentIndex = pages.firstIndex(of: viewController) ?? 0
            if currentIndex == pages.count - 1 {
                return nil
            }
            let nextIndex = abs((currentIndex + 1) % pages.count)
            return pages[nextIndex]
        } else {
            return nil
        }
    }
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController is PageContentViewController {
            let currentIndex = pages.firstIndex(of: viewController) ?? 0
            if currentIndex == 0 {
                return nil
            }
            let previousIndex = abs((currentIndex - 1) % pages.count)
            return pages[previousIndex]
        } else {
            return nil
        }
    }
}

// MARK: - UIPageViewControllerDelegate

extension ViewController: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController,
                            willTransitionTo pendingViewControllers: [UIViewController]) {
        pendingIndex = pages.firstIndex(of: pendingViewControllers.first!)
        if let index = pendingIndex {
            currentIndexPage = index
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        if completed {
            if let pendingIndex = pendingIndex {
                currentIndex = pendingIndex
                pageControl.currentPage = currentIndex
                guard let VCObj = pageViewController.viewControllers?.first as? PageContentViewController else {
                    return
                }
                VCObj.curentPage = currentIndex
                VCObj.tableView.reloadData()
            }
        }
    }
}
