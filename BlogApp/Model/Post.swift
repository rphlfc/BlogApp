//
//  Post.swift
//  BlogApp
//
//  Created by Raphael Cerqueira on 24/08/21.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
    let author: Author
    let time: String
}

struct Author: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
}

let posts = [
    Post(
        image: "image0",
        title: "Does Dry In January Actually Improve Your Health?",
        author: Author(image: "profile", name: "Subash Chandra"),
        time: "4 min read"),
    Post(
        image: "image1",
        title: "How to Seen Like You Always Have Your Shot Together",
        author: Author(image: "profile", name: "Johny Vino"),
        time: "4 min read"),
    Post(
        image: "image2",
        title: "Does Dry In January Actually Improve Your Health?",
        author: Author(image: "profile", name: "Masudur Rah"),
        time: "4 min read"),
    Post(
        image: "image3",
        title: "You do hire a designer to make something. You hire them.",
        author: Author(image: "profile", name: "Subash Chandra"),
        time: "4 min read"),
    Post(
        image: "image0",
        title: "Does Dry In January Actually Improve Your Health?",
        author: Author(image: "profile", name: "Subash Chandra"),
        time: "4 min read"),
    Post(
        image: "image1",
        title: "How to Seen Like You Always Have Your Shot Together",
        author: Author(image: "profile", name: "Johny Vino"),
        time: "4 min read"),
    Post(
        image: "image2",
        title: "Does Dry In January Actually Improve Your Health?",
        author: Author(image: "profile", name: "Masudur Rah"),
        time: "4 min read"),
    Post(
        image: "image3",
        title: "You do hire a designer to make something. You hire them.",
        author: Author(image: "profile", name: "Subash Chandra"),
        time: "4 min read"),
]
