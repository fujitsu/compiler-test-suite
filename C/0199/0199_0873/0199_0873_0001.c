#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern unsigned char v3 (signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned char, unsigned int);
extern signed int v5 (unsigned char, signed char);
extern signed int (*v6) (unsigned char, signed char);
signed char v7 (unsigned char, signed short, signed char, signed short);
signed char (*v8) (unsigned char, signed short, signed char, signed short) = v7;
unsigned short v9 (signed int, signed char, unsigned int, signed short);
unsigned short (*v10) (signed int, signed char, unsigned int, signed short) = v9;
extern unsigned int v11 (unsigned short, signed short, signed short);
extern unsigned int (*v12) (unsigned short, signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v15 (unsigned int, signed int, signed char);
unsigned int (*v16) (unsigned int, signed int, signed char) = v15;
extern signed char v17 (unsigned short, signed int);
extern signed char (*v18) (unsigned short, signed int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned char, signed int);
extern signed int (*v22) (unsigned char, unsigned char, signed int);
extern signed short v23 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, signed char, unsigned short);
signed char v25 (unsigned short, signed short, signed int);
signed char (*v26) (unsigned short, signed short, signed int) = v25;
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
unsigned char v29 (signed int, signed short, signed short);
unsigned char (*v30) (signed int, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 5U;
unsigned int v46 = 2U;
unsigned char v45 = 5;

unsigned char v29 (signed int v48, signed short v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -2;
signed int v52 = 0;
signed short v51 = -2;
trace++;
switch (trace)
{
case 2: 
return 5;
case 4: 
return 4;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed char v25 (unsigned short v54, signed short v55, signed int v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = 1;
unsigned short v58 = 1;
unsigned char v57 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v60, signed int v61, signed char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = -3;
signed short v64 = -1;
signed int v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v66, signed char v67, unsigned int v68, signed short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -2;
unsigned char v71 = 7;
unsigned short v70 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v73, signed short v74, signed char v75, signed short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 7;
unsigned short v78 = 1;
unsigned int v77 = 7U;
trace++;
switch (trace)
{
case 8: 
return v75;
default: abort ();
}
}
}
}
