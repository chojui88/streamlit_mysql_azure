pip install streamlit
python3 -m streamlit run app.py --server.port 8000 --server.address 0.0.0.0
"""
tasks = get_task()

st.write(tasks) 



#task를 완료하는 부분
new_task = st.text_input("task id")

if st.button("Complete") and task_id:
    mark_task_completed(task_id)
    st.success(f"Task '{task_id}' updated! ")

tasks = get_task()

st.write(tasks)


#작업을 완료하는 부분
def mark_task_completed(task_id):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()
        query = "UPDATE todos SET completed=TRUE WHERE id=%s"
        cursor.execute(query, (task,))
        connection.commit()
        cursor.close()
        connection.close()
    except Error as e:
        st.caption
    


"""

