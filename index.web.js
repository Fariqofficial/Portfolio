import { AppRegistry } from 'react-native';
import App from './App';
import appConfig from './app.json';

const appName = appConfig?.name || 'Portfolio';

AppRegistry.registerComponent(appName, () => App);

const rootTag = document.getElementById('app-root') || document.getElementById('root');

if (rootTag) {
  AppRegistry.runApplication(appName, {
    initialProps: {},
    rootTag: rootTag,
  });
}