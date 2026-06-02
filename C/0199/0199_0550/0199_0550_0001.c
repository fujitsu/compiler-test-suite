#include <stdlib.h>
signed char v1 (unsigned int);
signed char (*v2) (unsigned int) = v1;
signed int v3 (signed short, signed char);
signed int (*v4) (signed short, signed char) = v3;
extern unsigned int v5 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
void v9 (signed int, unsigned int, signed int);
void (*v10) (signed int, unsigned int, signed int) = v9;
signed short v11 (unsigned short, unsigned short);
signed short (*v12) (unsigned short, unsigned short) = v11;
extern void v13 (signed short, signed int);
extern void (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed int, signed int, signed char);
extern signed short (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed int, unsigned char, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed int v29 (signed short, signed short, signed short, signed short);
extern signed int (*v30) (signed short, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 3U;
unsigned short v51 = 0;
signed int v50 = -1;

signed int v27 (void)
{
{
for (;;) {
signed int v55 = -1;
unsigned int v54 = 4U;
unsigned short v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 4;
unsigned short v59 = 0;
unsigned short v58 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v61, unsigned int v62, signed int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 3;
signed short v65 = 0;
unsigned char v64 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v67, signed char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 3;
signed int v70 = 2;
signed short v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 3;
unsigned char v74 = 7;
unsigned char v73 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v76;
signed short v77;
signed short v78;
signed short v79;
signed int v80;
v76 = 0 + 0;
v77 = -1 + -4;
v78 = 2 - 1;
v79 = -2 + 1;
v80 = v29 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 2: 
{
unsigned char v81;
signed int v82;
signed int v83;
signed char v84;
signed short v85;
v81 = v75 + v73;
v82 = -1 - 0;
v83 = 2 + 2;
v84 = -3 - 3;
v85 = v15 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
