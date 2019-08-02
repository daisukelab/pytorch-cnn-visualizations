cd ~/code/pytorch-cnn-visualizations
rm -rf dist
rm -rf pytorch_cnn_visualizations.egg-info
rm -rf build
deactivate
source venv/bin/activate
python setup.py bdist_wheel
deactivate
virtualenv -p python3 venv_package
source venv_package/bin/activate
cd ..
pip install pytorch-cnn-visualizations/dist/pytorch_cnn_visualizations-0.2.0-py3-none-any.whl
cd ~/code/pytorch-cnn-visualizations
