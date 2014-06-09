export default {
  name: 'services',
  initialize: function(container, application){
    application.inject('route', 'user', 'service:user');
    application.inject('controller', 'user', 'service:user');
  }
};
