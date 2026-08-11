import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    width: '100%',
    paddingVertical: 20,
  },
  headerWrapper: {
    alignItems: 'center',
    marginBottom: 20,
  },
  profileAvatar: {
    width: 120,
    height: 120,
    borderRadius: 60,
    marginBottom: 16,
  },
  bio: {
    textAlign: 'center',
    maxWidth: 700,
    marginVertical: 16,
    lineHeight: 24,
    paddingHorizontal: 16,
  },
  techGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'center',
    maxWidth: 900,
    marginTop: 10,
  },
});

export default styles;