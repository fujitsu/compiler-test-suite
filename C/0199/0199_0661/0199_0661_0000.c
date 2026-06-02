#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
signed short v3 (unsigned int, signed short);
signed short (*v4) (unsigned int, signed short) = v3;
signed int v5 (unsigned char, signed short);
signed int (*v6) (unsigned char, signed short) = v5;
extern signed char v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (signed char, signed int, signed char);
extern unsigned short (*v16) (signed char, signed int, signed char);
extern signed char v17 (unsigned short, unsigned short);
extern signed char (*v18) (unsigned short, unsigned short);
extern signed short v19 (signed int, unsigned int, unsigned char, unsigned char);
extern signed short (*v20) (signed int, unsigned int, unsigned char, unsigned char);
extern signed char v21 (signed int, signed char, unsigned int);
extern signed char (*v22) (signed int, signed char, unsigned int);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed char v32 = -4;
unsigned short v31 = 2;

signed short v25 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
unsigned short v35 = 7;
unsigned short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed char v39 = -2;
unsigned int v38 = 0U;
unsigned int v37 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -4;
unsigned int v43 = 2U;
signed char v42 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed int v45;
signed char v46;
unsigned int v47;
signed char v48;
v45 = -2 - -3;
v46 = v44 - v42;
v47 = v43 - 3U;
v48 = v21 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 6: 
{
signed int v49;
signed char v50;
unsigned int v51;
signed char v52;
v49 = 1 - -2;
v50 = v42 + v42;
v51 = 0U + 5U;
v52 = v21 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 8: 
{
signed int v53;
signed char v54;
unsigned int v55;
signed char v56;
v53 = -3 + -2;
v54 = -3 + v42;
v55 = v43 + v43;
v56 = v21 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
{
signed int v57;
signed char v58;
unsigned int v59;
signed char v60;
v57 = -3 - -4;
v58 = v42 - -4;
v59 = v43 + 5U;
v60 = v21 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed short v3 (unsigned int v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 3;
signed short v64 = 2;
unsigned short v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v68;
unsigned short v69;
signed short v70;
v68 = 2 - v33;
v69 = 1 - 7;
v70 = v1 (v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
