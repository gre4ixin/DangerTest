import Danger

let danger = Danger()
let github = danger.github

let diffFiles = danger.git.modifiedFiles + danger.git.createdFiles

if !danger.github.pullRequest.title.contains("IOS-") {
    warn("Fix title of pull request")
}

if (danger.github.pullRequest.additions ?? 0) > 350 {
    warn("Big PR, try to keep changes smaller if you can")
}

if danger.github.pullRequest.title.contains("WIP") {
    warn("PR is classed as Work in Progress")
}

SwiftLint.lint(.modifiedAndCreatedFiles(directory: nil), inline: true)
