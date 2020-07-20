import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCheckboxList<T> extends FormBuilderField<List<T>> {
  final List<FormBuilderFieldOption> options;
  final ListTileControlAffinity controlAffinity;
  final Color activeColor;
  final Color checkColor;

  // final Widget secondary;

  FormBuilderCheckboxList({
    Key key,
    //From Super
    @required String attribute,
    FormFieldValidator validator,
    List<T> initialValue,
    bool readOnly = false,
    InputDecoration decoration = const InputDecoration(),
    ValueChanged onChanged,
    ValueTransformer valueTransformer,
    bool enabled = true,
    FormFieldSetter onSaved,
    bool autovalidate = false,
    VoidCallback onReset,
    FocusNode focusNode,
    @required this.options,
    this.controlAffinity = ListTileControlAffinity.leading,
    this.activeColor,
    this.checkColor,
    // this.secondary,
  }) : super(
          key: key,
          initialValue: initialValue,
          attribute: attribute,
          validator: validator,
          valueTransformer: valueTransformer,
          onChanged: onChanged,
          readOnly: readOnly,
          autovalidate: autovalidate,
          onSaved: onSaved,
          enabled: enabled,
          onReset: onReset,
          decoration: decoration,
          builder: (FormFieldState field) {
            final _FormBuilderCheckboxListState<T> state = field;
            var checkboxList = [];

            for (var i = 0; i < options.length; i++) {
              checkboxList.addAll(
                [
                  CheckboxListTile(
                    value: state.value.contains(options[i].value),
                    title: options[i],
                    onChanged: state.readOnly
                        ? null
                        : (val) {
                            var currentValue = [...state.value];
                            if (!currentValue.contains(options[i].value)) {
                              currentValue.add(options[i].value);
                            } else {
                              currentValue.remove(options[i].value);
                            }
                            state.requestFocus();
                            state.didChange(currentValue);
                          },
                    dense: true,
                    isThreeLine: false,
                    controlAffinity: controlAffinity,
                    // secondary: secondary,
                    activeColor: activeColor,
                    checkColor: checkColor,
                  ),
                  Divider(height: 0.0),
                ],
              );
            }
            return InputDecorator(
              decoration: decoration.copyWith(
                enabled: !state.readOnly,
                errorText: field.errorText,
              ),
              child: Column(
                key: ObjectKey(state.value),
                children: List<Widget>.from(checkboxList),
              ),
            );
          },
        );

  @override
  _FormBuilderCheckboxListState<T> createState() =>
      _FormBuilderCheckboxListState();
}

class _FormBuilderCheckboxListState<T> extends FormBuilderFieldState<List<T>> {
  @override
  FormBuilderCheckboxList<T> get widget => super.widget;
}
