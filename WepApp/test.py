import streamlit as st


st.title("Welcome to Streamlit!")

st.header("이것은 헤더입니다")
st.subheader("이것은 서브헤더 입니다")

st.code("""
def Plus(a,b):
    return a+b
        """, language="python" )

st.markdown("**일반적인** 내용을 출력한다.")

st.text("부가세 계산기")
st.divider()
price = st.text_input("상품의 가격을 입력하세요")

button_click = st.button("계산")
if button_click:
    st.text(str(int(price)*1.1)+ "원 입니다.")