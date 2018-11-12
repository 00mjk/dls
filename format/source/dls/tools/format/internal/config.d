/*
 *Copyright (C) 2018 Laurent Tréguier
 *
 *This file is part of DLS.
 *
 *DLS is free software: you can redistribute it and/or modify
 *it under the terms of the GNU General Public License as published by
 *the Free Software Foundation, either version 3 of the License, or
 *(at your option) any later version.
 *
 *DLS is distributed in the hope that it will be useful,
 *but WITHOUT ANY WARRANTY; without even the implied warranty of
 *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *GNU General Public License for more details.
 *
 *You should have received a copy of the GNU General Public License
 *along with DLS.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

module dls.tools.format.internal.config;

enum IndentStyle
{
    tab = '\t',
    space = ' '
}

enum EndOfLine
{
    osDefault = "",
    lf = "\n",
    crlf = "\r\n",
    cr = "\r"
}

enum BraceStyle
{
    allman,
    otbs
}

struct FormatConfig
{
    // EditorConfig settings
    IndentStyle indentStyle = IndentStyle.space;
    size_t indentSize = 4;
    size_t tabWidth = 4;
    EndOfLine endOfLine = EndOfLine.osDefault;
    size_t maxLineLength = 120;

    // DFMT settings
    BraceStyle braceStyle = BraceStyle.allman;
    size_t softMaxLineLength = 80;
}
