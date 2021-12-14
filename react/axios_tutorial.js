async function handleSubmit(data) {
  setErrorMsg("");
  const url = process.env.API_URL + "/core/user-addresses/";
  try {
    await axios.post(url, data, {
      headers: {
        Authorization: `Token ${cookies.token}`,
      },
    });
  } catch (error) {
    console.log(JSON.stringify(error));
    setErrorMsg(error.message);
  }
}

export const getServerSideProps = async (ctx) => {
  const cookies = nookies.get(ctx);
  const url = process.env.API_URL + "/users/users/";
  let user = null;

  if (cookies?.token) {
    try {
      const { data } = await axios.get(url, {
        headers: {
          Authorization: `Token ${cookies.token}`,
        },
      });
      user = data;
    } catch (e) {
      console.log(e);
    }
  }

  if (user) {
    return {
      redirect: {
        permanent: false,
        destination: "/account",
      },
      props: {
        isLoggedIn: true,
        cookies,
      },
    };
  }

  return {
    props: {
      isLoggedIn: false,
      cookies,
    },
  };
};

export default Login;
