import gi

gi.require_version("Gtk", "3.0")

from gi.repository import Gtk
from os.path import abspath, dirname, join


class TheApp:
    '''The Application Class.'''

    def __init__(self):
        # Build GUI
        self.builder = Gtk.Builder()
        self.builder.add_from_file('combo_ex.glade')

        # Get objects
        self.window = self.builder.get_object('window')
        # Cria uma array de duas colunas, a primeira para ser uma espécie de
        # identificador, ID, e a outra, o texto mostrado. Poderia ser uma
        # coluna int e outra string, caso os Ids fossem numéricos.
        self.liststore = Gtk.ListStore(str, str)

        # Initialize interface
        colors = [
            ['#ID:1', 'Opção 1'],
            ['#ID:2', 'Opção 2'],
            ['#ID:3', 'Opção 3']]
        for color in colors:
            self.liststore.append(color)

        # Associando a array (ListStore) ao ComboBox
        self.combo = self.builder.get_object('combo')
        self.combo.set_model(self.liststore)
        # É necessário adicionar um renbderizador de texto ao ComboBox
        renderer_text = Gtk.CellRendererText()
        self.combo.pack_start(renderer_text, True)
        # Escolher qual coluna mostrar:
        self.combo.add_attribute(renderer_text, "text", 1)

        # Opção ativa default
        self.combo.set_active(0)

        # Connect signals
        self.builder.connect_signals(self)

        # Everything is ready
        self.window.show()

    def on_window_destroy(self, widget):
        '''Classical window close button.'''
        Gtk.main_quit()

    def on_button_clicked(self, button):
        '''Do something...'''
        print("Hello World!")

    def on_combo_changed(self, widget):
        '''Verify which option is selected'''
        model = widget.get_model()
        active = widget.get_active()
        if active >= 0:
            code = model[active][0]
            print('Opção selecionada: {}'.format(code))
        else:
            print('Sem opção.')


if __name__ == '__main__':
    try:
        gui = TheApp()
        Gtk.main()
    except KeyboardInterrupt:
        pass
