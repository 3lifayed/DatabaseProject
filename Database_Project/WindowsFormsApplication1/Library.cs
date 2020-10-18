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
    public partial class Library : Form
    {
        public Library()
        {
            InitializeComponent();
        }

        private void libraryBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.libraryBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.lIBRARYDataSet);

        }

        private void Library_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'lIBRARYDataSet.Library' table. You can move, or remove it, as needed.
            this.libraryTableAdapter.Fill(this.lIBRARYDataSet.Library);

        }
    }
}
