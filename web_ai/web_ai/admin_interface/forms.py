from django import forms
from .models import ModelSite, ModelPerson, ModelKeyword


class SitesManageForm(forms.ModelForm):

    class Meta:
        model = ModelSite
        fields = '__all__'

    multiple_select = forms.ModelMultipleChoiceField(queryset=ModelSite.objects.all(), required=False)
    name = forms.CharField(required=False, widget=forms.URLInput(attrs={'id': 'url', 'value': 'http://'}))


class PersonsManageForm(forms.ModelForm):

    class Meta:
        model = ModelPerson
        fields = '__all__'

    multiple_select = forms.ModelMultipleChoiceField(queryset=ModelPerson.objects.all(), required=False)
    name = forms.CharField(required=False, widget=forms.TextInput(attrs={'id': 'person'}))


class KeywordsForm(forms.Form):

    class Meta:
        model = ModelKeyword
        fields = '__all__'

    dropdown = forms.ModelChoiceField(queryset=None, required=False)
    multiple_select = forms.ModelMultipleChoiceField(queryset=None, required=False)

    def __init__(self, *args, **kwargs):
        super(KeywordsForm, self).__init__(*args, **kwargs)
        self.fields['dropdown'] = forms.ModelChoiceField(
            queryset=ModelPerson.objects.all()
        )


class KeywordsAddForm(forms.Form):
    class Meta:
        model = ModelKeyword
        fields = '__all__'

    keywords_add = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'keyword1, keyword2, etc.'}),
                                   required=False)
