#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
unsigned short v5 (signed int, signed short, signed int);
unsigned short (*v6) (signed int, signed short, signed int) = v5;
signed int v9 (unsigned char, unsigned char, signed int, signed short);
signed int (*v10) (unsigned char, unsigned char, signed int, signed short) = v9;
signed int v11 (signed short);
signed int (*v12) (signed short) = v11;
signed char v13 (signed char, unsigned char);
signed char (*v14) (signed char, unsigned char) = v13;
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern void v17 (unsigned char, unsigned short, unsigned short, unsigned short);
extern void (*v18) (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
static signed char v21 (signed char, unsigned short, signed short);
static signed char (*v22) (signed char, unsigned short, signed short) = v21;
extern unsigned char v23 (unsigned short, signed int, signed short, unsigned short);
extern unsigned char (*v24) (unsigned short, signed int, signed short, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed char v29 (unsigned char, signed short);
signed char (*v30) (unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v38 = 3;
signed int v37 = 0;
signed int v36 = 2;

signed char v29 (unsigned char v39, signed short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 0;
unsigned short v42 = 6;
signed int v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (signed char v44, unsigned short v45, signed short v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 4;
signed int v48 = -3;
signed int v47 = 3;
trace++;
switch (trace)
{
case 4: 
return -3;
default: abort ();
}
}
}
}

signed char v13 (signed char v50, unsigned char v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 4;
unsigned short v53 = 7;
signed char v52 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 6U;
signed short v57 = 1;
unsigned int v56 = 0U;
trace++;
switch (trace)
{
case 9: 
return 2;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v59, unsigned char v60, signed int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -4;
signed short v64 = -2;
unsigned int v63 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v66, signed short v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -4;
signed int v70 = 0;
signed int v69 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v72;
unsigned short v73;
signed short v74;
signed char v75;
v72 = -3 + -2;
v73 = 6 + 7;
v74 = v67 + v67;
v75 = v21 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
return 6;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 0;
signed char v78 = 1;
unsigned short v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
