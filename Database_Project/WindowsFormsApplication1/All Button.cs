using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class All_Button : Form
    {
        public All_Button()
        {
            InitializeComponent();
        }

        private void All_Button_Load(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            Publisher p = new Publisher();
            p.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Book b = new Book();
            b.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Library l = new Library();
            l.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Student s = new Student();
            s.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Search_form ss = new Search_form();
            ss.Show();
        }
    }
}
