def read_excel_data(file_path, sheet_name, cell):
    # Load the workbook and sheet
    from openpyxl import load_workbook
    workbook = load_workbook(file_path)
    sheet = workbook[sheet_name]
    # Get the value of the specified cell
    cell_value = sheet[cell].value
    return cell_value

