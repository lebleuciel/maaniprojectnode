const express = require('express')
const router = express.Router()
const controller = require('../controller/file.controller')

let routes = (app) => {
  router.post('api/file', controller.upload)
  router.get('api/file/list', controller.getListFiles)
  router.get('api/file', controller.download)
  router.delete('api/file', controller.remove)

  app.use(router)
}

module.exports = routes
