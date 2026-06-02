#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned char v7 (unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned short);
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
void v13 (unsigned char, unsigned int, signed char);
void (*v14) (unsigned char, unsigned int, signed char) = v13;
void v15 (void);
void (*v16) (void) = v15;
extern signed int v17 (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed short v25 (unsigned short, unsigned int, unsigned char);
signed short (*v26) (unsigned short, unsigned int, unsigned char) = v25;
signed int v27 (signed short, unsigned int, unsigned int, signed int);
signed int (*v28) (signed short, unsigned int, unsigned int, signed int) = v27;
extern signed int v29 (signed int, unsigned short, unsigned char);
extern signed int (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v40 = -2;
unsigned char v39 = 3;
unsigned char v38 = 4;

signed int v27 (signed short v41, unsigned int v42, unsigned int v43, signed int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 4;
unsigned int v46 = 5U;
signed short v45 = 3;
trace++;
switch (trace)
{
case 8: 
return v44;
case 10: 
return v44;
default: abort ();
}
}
}
}

signed short v25 (unsigned short v48, unsigned int v49, unsigned char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 6U;
unsigned char v52 = 0;
unsigned char v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed int v56 = 1;
unsigned int v55 = 3U;
unsigned int v54 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v57, unsigned int v58, signed char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 1;
signed int v61 = 3;
signed char v60 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 3;
unsigned short v65 = 4;
unsigned short v64 = 5;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v67;
v67 = v64 - 2;
v19 (v67);
}
break;
case 4: 
{
unsigned short v68;
v68 = v64 - v65;
v19 (v68);
}
break;
case 6: 
{
unsigned short v69;
v69 = 1 - v63;
v19 (v69);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
