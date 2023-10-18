bool isValidName(String name) {
  // M. Saddam Nur
  List<String> terms = name.split(' ');

  // [M., Saddam, Nur]
  if (terms.length < 2 || terms.length > 3) {
    return false;
  }

  for (var term in terms) {
    if (term[0] == '.') return false; // . Saddam Nur
    if (term.length == 1) return false; // M. Saddam nur
    if (term[0] != term[0].toUpperCase()) return false; // M. Saddam nur
    if (term.contains('.')) {
      if (term.length > 2) return false; // Mu. Saddam Nur
    }
  }
  if (terms.last.contains('.')) {
    return false; // M. Saddam N.
  }
  if (terms.length <= 2 && terms.last.length > 2 && terms.last.contains('.')) {
    return false; // M. Saddam.
  }
  if (terms.length > 2 &&
      terms.first.contains('.') &&
      !terms[1].contains('.')) {
    return false; // M. Saddam Nur
  }

  return true;
}
