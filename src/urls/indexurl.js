const DEFAULT_API_LOCALHOST = `${process.env.REACT_APP_API_URL}`;

const defaultApi = `${process.env.REACT_APP_API_URL}`;
const postsAPI = `${DEFAULT_API_LOCALHOST}/posts`;
const bookmarksAPI = (postId) => `${defaultApi}/posts/${postId}/bookmarks`;
const bookmarksListAPI = `${DEFAULT_API_LOCALHOST}/posts/bookmarks`;


export { defaultApi, postsAPI, bookmarksAPI, bookmarksListAPI };