// ignore_for_file: constant_identifier_names

const String FONT_FAMILY = 'Poppins';

class ConstantImages {
  static const String BASE_IMAGE_URL = 'assets/images/';
  static const String IMAGE_SESSION_EXPIRED_URL =
      '${BASE_IMAGE_URL}others/sessionexpired.png';
  static const String IMAGE_LOGO_URL = '${BASE_IMAGE_URL}Instagram.png';
  static const String IMAGE_LOGO_URL_UD = '${BASE_IMAGE_URL}logo/logo_ud.png';
  static const String IMAGE_LOGO_URL_UD_WHITE =
      '${BASE_IMAGE_URL}logo/logo_ud_white.png';
  static const String IMAGE_PLACE_HOLDER =
      '${BASE_IMAGE_URL}placeholder/image_placeholder.gif';
  static const String IMAGE_PAYMENT_CARD =
      '${BASE_IMAGE_URL}payment_methods/card.png';
  static const String IMAGE_PAYMENT_COD =
      '${BASE_IMAGE_URL}payment_methods/cod.png';
  static const String IMAGE_PAYMENT_HBL =
      '${BASE_IMAGE_URL}payment_methods/hbl.png';
  static const String IMAGE_PAYMENT_KHALTI =
      '${BASE_IMAGE_URL}payment_methods/khalti.png';
  static const String IMAGE_PAYMENT_ESEWA =
      '${BASE_IMAGE_URL}payment_methods/esewa.png';
  static const String IMAGE_PAYMENT_PAYPAL =
      '${BASE_IMAGE_URL}payment_methods/paypal.png';
  static const String IMAGE_SWIPE_HINT_UP =
      '${BASE_IMAGE_URL}others/swipe_hint_up.png';
  static const String IMAGE_SWIPE_HINT_DOWN =
      '${BASE_IMAGE_URL}others/swipe_hint_down.png';
  static const String IMAGE_BRAND = '${BASE_IMAGE_URL}others/tv.png';

  static const String IMAGE_SHORT_BANNER = '${BASE_IMAGE_URL}others/ban.png';
  static const String IMAGE_BRAND_SAMSUNG = '${BASE_IMAGE_URL}brand/';

  static const String IMAGE_GAME_BANNER =
      '${BASE_IMAGE_URL}game/game_banner.png';
  static const String IMAGE_SURPRISE_BOX1 =
      '${BASE_IMAGE_URL}game/surprise_box1.png';
  static const String IMAGE_SURPRISE_BOX2 =
      '${BASE_IMAGE_URL}game/surprise_box2.png';
  static const String IMAGE_SURPRISE_BOX3 =
      '${BASE_IMAGE_URL}game/surprise_box3.png';
  static const String IMAGE_SURPRISE_BOX4 =
      '${BASE_IMAGE_URL}game/surprise_box4.png';
  static const String IMAGE_SURPRISE_BOX_OPEN1 =
      '${BASE_IMAGE_URL}game/surprise_box_open1.png';
  static const String IMAGE_SURPRISE_BOX_OPEN2 =
      '${BASE_IMAGE_URL}game/surprise_box_open2.png';
  static const String IMAGE_SURPRISE_BOX_OPEN3 =
      '${BASE_IMAGE_URL}game/surprise_box_open3.png';
  static const String IMAGE_SURPRISE_BOX_OPEN4 =
      '${BASE_IMAGE_URL}game/surprise_box_open4.png';
  static const String IMAGE_SURPRISE_BOX_OPEN5 =
      '${BASE_IMAGE_URL}game/surprise_box_open5.png';
  static const String IMAGE_GAME_SPIN = '${BASE_IMAGE_URL}game/spin.png';
  static const String IMAGE_GAME_SCRATCH = '${BASE_IMAGE_URL}game/scratch.png';
  static const String IMAGE_GAME_QUIZ = '${BASE_IMAGE_URL}game/quiz.png';

  static const String IMAGE_ON_BOARD_1 =
      '${BASE_IMAGE_URL}onboard/onboard1.png';
  static const String IMAGE_ON_BOARD_2 =
      '${BASE_IMAGE_URL}onboard/onboard2.png';
  static const String IMAGE_ON_BOARD_3 =
      '${BASE_IMAGE_URL}onboard/onboard3.png';
  static const String IMAGE_ON_BOARD_4 =
      '${BASE_IMAGE_URL}onboard/onboard4.png';
  static const String IMAGE_ON_BOARD_TOP_1 =
      '${BASE_IMAGE_URL}onboard/global1.png';
  static const String IMAGE_ON_BOARD_TOP_2 =
      '${BASE_IMAGE_URL}onboard/global2.png';
  static const String IMAGE_ON_BOARD_TOP_3 =
      '${BASE_IMAGE_URL}onboard/global3.png';
  static const String IMAGE_ON_BOARD_TOP_4 =
      '${BASE_IMAGE_URL}onboard/global4.png';

  static const String IMAGE_ERROR_HOME =
      '${BASE_IMAGE_URL}error/home_screen_error.png';
  static const String IMAGE_ERROR_NO_INTERNET =
      '${BASE_IMAGE_URL}error/no_internet.png';
  static const String IMAGE_ERROR = '${BASE_IMAGE_URL}error/error.png';
  static const String GAME_ICON = '${BASE_IMAGE_URL}others/game_icon.png';
}

const double BORDER_RADIUS = 4;

const double SCREEN_PADDING = 16;

const double SCREEN_WIDTH = 600;

const String TOKEN = 'token';
const String TRY_AGAIN = 'Try Again';

const Map<String, String> HEADER_CONTENT_TYPE = {
  "Content-Type": "application/json"
};

const String BOX_CART = 'cart';

const String SHARED_PREFS_KEY_NAGIGATION_AFTER_LOGIN = 'nagigation_afer_login';
const String SHARED_PREFS_KEY_IS_NEXT_ON_ADDRESS = 'is_next_on_address';
const String SHARED_PREFS_KEY_FETCH_CART = 'fetch_cart';
const String SHARED_PREFS_KEY_USER_NAME = 'user_name';
const String SHARED_PREFS_KEY_USER_ID = 'user_id';
const String SHARED_PREFS_KEY_COD_AVAILABE = 'cod_available';
const String SHARED_PREFS_KEY_BNB_INDEX = 'bnb_index';
const String SHARED_PREFS_KEY_SHOW_BOARDING_SCREEN = 'show_boarding_screen';
const String SHARED_PREFS_KEY_SHOW_GAME_POLICY = 'show_game_policy';

class NavigationArgument {
  static const String SHOW_CARSOUL = 'show_carsoul';
  static const String TITILE = 'title';
}

class AddressType {
  static const String SHIPPING = 'Shipping Address';
  static const String BILLING = 'Billing Address';
  static const String WORK = 'Work';
  static const String HOME = 'Home';
}

class SortType {
  static const String PRICE_LOW_TO_HIGH = 'Price low to high';
  static const String PRICE_HIGH_TO_LOW = 'Price high to low';
  static const String RATING_LOW_TO_HIGH = 'Rating low to high';
  static const String RATING_HIGH_TO_LOW = 'Rating high to low';
  static const String ASCENDING_ORDER = 'Ascending Order';
  static const String DESCENDING_ORDER = 'Descending Order';
}

class BnbIndex {
  static const int HOME = 0;
  static const int CATEGORY = 1;
  static const int CART = 2;
  static const int PERSON = 3;
}

class Game {
  static const String SPIN_AND_WIN = 'spinandwin';
  static const String SURPRISE_BOX = 'surprisebox';
  static const String SCRATCH_AND_WIN = 'scratchandwin';
}

const String TEXT_NO_INTERNET =
    "Connection Problem! Check your internet and try again.";

const String CONNECTION_TIMED_OUT = 'Connection time out';

const String TEXT_SOMETHING_WENT_WRONG_ERROR = 'Something Went Wrong';
const String TEXT_CASH_ON_DELIVERY = 'Cash on delivery';
const String TEXT_HBL = 'HBL';
const String TEXT_PAYPAL = 'Paypal';
const String TEXT_KHALTI = 'Khalti digital wallet';
const String TEXT_ESEWA = 'Eswa digital wallet';
const String TEXT_CREDIT_DEBIT_CARD = 'Credit card or debit Card';

const String TEXT_EPAY_CASH_ON_DELIVERY = 'Cash on delivery';
const String TEXT_EPAY_HBL = 'HBL';
const String TEXT_EPAY_PAYPAL = 'Paypal';
const String TEXT_EPAY_KHALTI = 'khalti';
const String TEXT_EPAY_ESEWA = 'esewa';

const String TEXT_EPAY_CREDIT_DEBIT_CARD = 'Credit card or debit Card';

const String TEXT_CANCELLED = 'Cancelled';
const int INDEX_CANCELLED = 1;

const String WIRE_DASH_PROJECT_ID = 'ultimodeal-dkwf2m5';
const String WIRE_DASH_SDK_KEY = 'OyjM5Oc04i2NVcsXcsd2qcYw2PJq4BuT';

const String KHALTI_PUBLIC_KEY =
    // 'test_public_key_4fc236d832d941cf9699a58f28e341de';
    'live_public_key_687e07f851eb4948b63cd026ab76ea67';

const String ESEWA_CLIENT_ID =
    // 'test_public_key_4fc236d832d941cf9699a58f28e341de';
    'JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R';

const String ESEWA_SECRET_KEY =
    // 'test_public_key_4fc236d832d941cf9699a58f28e341de';
    'BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==';

const String ONE_SIGNAL_APP_ID = '92199e6c-6733-4d2b-8f25-383bf89af1df';
const String ONE_SIGNAL_SECRET_KEY =
    'NDIxNWJlOWItZGI3Ny00ODI5LWIwMGMtNmI2N2E2YWNhZTRm';

const String CART_LOCALLY_ADDED_MESSAGE =
    'Item has been added successfully. Please login to checkout';

const List<String> COLOR_POSSIBLE_LETTER_LIST = [
  'color',
  'Color',
  'colour',
  'Colour',
  'colors',
  'Colors',
  'colours',
  'Colours',
];
