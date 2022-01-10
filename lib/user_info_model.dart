class UserInfoModel{

  var _displayname ;
  var _email ;
  var _photoUrl ;
  var _idToken;
  var _accessToken;

  UserInfoModel(this._displayname, this._email, this._photoUrl, this._idToken,
      this._accessToken);


  // getters
  get accessToken => _accessToken;

  get idToken => _idToken;

  get photoUrl => _photoUrl;

  get email => _email;

  get displayname => _displayname;
}