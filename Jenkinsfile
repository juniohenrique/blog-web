node {
    try {
        stage("Build") {
            git 'git@github.com:qaninjahq/blog-web.git'
        }
        stage("Testing") {
            sh "./deploy.sh testing"
            ruby("cd tests && bundler install && bundler exec cucumber")
            cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'tests/logs', sortingMethod: 'ALPHABETICAL'
        }
        stage("Production") {
            sh "./deploy.sh production"
        }
    }
    catch (err) {
        currentBuild = 'Deu ruim no build :('
        cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'tests/logs', sortingMethod: 'ALPHABETICAL'
        throw err
    }

}

def ruby(String commands) {
    sh "bash -c 'source ~/.bashrc && rbenv global 2.4.3 && ${commands}'"
}