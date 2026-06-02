#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, signed short);
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
signed short v7 (signed short, unsigned int, unsigned short, signed char);
signed short (*v8) (signed short, unsigned int, unsigned short, signed char) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned int v11 (signed short, unsigned int);
unsigned int (*v12) (signed short, unsigned int) = v11;
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
extern void v15 (unsigned char, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned char, unsigned int, unsigned char, signed char);
extern signed char v17 (signed int, unsigned int, signed short);
extern signed char (*v18) (signed int, unsigned int, signed short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
signed char v21 (unsigned short, unsigned short, unsigned char, unsigned short);
signed char (*v22) (unsigned short, unsigned short, unsigned char, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, signed int, unsigned int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 7U;
signed char v41 = -1;
signed char v40 = -2;

signed char v21 (unsigned short v43, unsigned short v44, unsigned char v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = -4;
unsigned short v48 = 2;
signed int v47 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned char v52 = 5;
unsigned char v51 = 3;
signed short v50 = 1;
trace++;
switch (trace)
{
case 2: 
return 1;
case 5: 
return v51;
case 8: 
return v52;
case 10: 
return v52;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 2;
unsigned char v56 = 1;
unsigned int v55 = 5U;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v58;
v58 = v19 ();
history[history_index++] = (int)v58;
}
break;
case 6: 
return v54;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v61 = -2;
signed int v60 = -2;
unsigned char v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v62, unsigned int v63, unsigned short v64, signed char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 3;
unsigned char v67 = 3;
unsigned int v66 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
