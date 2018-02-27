node {
    try {
        stage("Build") {
            git 'git@github.com:qaninjahq/blog-web.git'
        }
        stage("Testing") {
            sh "./deploy.sh testing"
        }
        stage("Production") {
            
        }
    }
    catch (err) {
        currentBuild = 'Deu ruim no build :('
        throw err
    }

}

def ruby(String commands) {
    sh "bash -c 'source ~/.bashrc && rbenv global 2.4.3 && ${commands}'"
}