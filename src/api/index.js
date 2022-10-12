const SERVER_URL = 'http://localhost:5001'

const getQoutes = async () => {
    return await fetch(`${SERVER_URL}/qoute`)
}

export default {
    getQoutes
}