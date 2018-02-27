// Server entry point, imports all server code

import '/imports/startup/server';
import '/imports/startup/both';

import envConfig from './env';

Meteor.startup(() => {
    let env = process.env.NODE_ENV;

    if (env == 'development') {
        console.log(`Running in ${env}`);
        global.apiUrl = envConfig.api.development;
    } else if (env == 'testing') {
        console.log(`Running in ${env}`);
        global.apiUrl = envConfig.api.testing;
    } else if (env == 'production') {
        console.log(`Running in ${env}`);
        global.apiUrl = envConfig.api.production;
    }
});