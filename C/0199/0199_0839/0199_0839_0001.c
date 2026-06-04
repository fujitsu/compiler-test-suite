#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
unsigned char v5 (unsigned char, signed char, signed short);
unsigned char (*v6) (unsigned char, signed char, signed short) = v5;
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed short v13 (signed short, signed int, unsigned int, signed int);
extern signed short (*v14) (signed short, signed int, unsigned int, signed int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
unsigned char v17 (unsigned short, unsigned char);
unsigned char (*v18) (unsigned short, unsigned char) = v17;
unsigned short v21 (unsigned int);
unsigned short (*v22) (unsigned int) = v21;
extern unsigned short v23 (unsigned char, signed short, signed char);
extern unsigned short (*v24) (unsigned char, signed short, signed char);
unsigned short v25 (signed short, signed char);
unsigned short (*v26) (signed short, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed char);
extern signed char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v45 = -4;
unsigned short v44 = 7;
unsigned short v43 = 4;

unsigned short v25 (signed short v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 2U;
signed int v49 = 0;
signed char v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 0;
unsigned char v53 = 3;
signed char v52 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v55, unsigned char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 5;
unsigned int v58 = 7U;
signed int v57 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v60, signed char v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 0U;
signed short v64 = -2;
signed short v63 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned int v68 = 4U;
signed char v67 = -2;
signed char v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v71 = 1U;
unsigned short v70 = 3;
signed short v69 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v72;
signed int v73;
unsigned int v74;
signed int v75;
signed short v76;
v72 = v69 + -2;
v73 = 2 + 2;
v74 = v71 + 5U;
v75 = 1 - 2;
v76 = v13 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 2: 
{
signed short v77;
unsigned int v78;
unsigned int v79;
v77 = 2 - v69;
v78 = v71 + 6U;
v79 = v7 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return v69;
default: abort ();
}
}
}
}
