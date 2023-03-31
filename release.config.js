module.exports = {
    branches: "master",
    repositoryUrl: "https://github.com/prudevops30/GITHUBACTIONS-30.git",
    plugins: [
      '@semantic-release/commit-analyzer',
      '@semantic-release/release-notes-generator',
      '@semantic-release/git',
      '@semantic-release/github']
    }