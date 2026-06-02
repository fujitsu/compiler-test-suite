#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, unsigned short, unsigned int);
extern signed char (*v2) (signed short, unsigned short, unsigned int);
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
signed int v5 (unsigned int, unsigned int, unsigned int);
signed int (*v6) (unsigned int, unsigned int, unsigned int) = v5;
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed char v9 (unsigned char, unsigned int);
extern signed char (*v10) (unsigned char, unsigned int);
extern signed int v11 (signed char, unsigned char, signed short);
extern signed int (*v12) (signed char, unsigned char, signed short);
signed short v13 (signed short, signed int, unsigned short, unsigned char);
signed short (*v14) (signed short, signed int, unsigned short, unsigned char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed short v21 (signed int, unsigned int, signed short);
extern signed short (*v22) (signed int, unsigned int, signed short);
extern void v23 (signed char, signed short);
extern void (*v24) (signed char, signed short);
extern unsigned int v25 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, signed short);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed int v32 = 2;
signed char v31 = -4;

signed short v13 (signed short v34, signed int v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 3;
unsigned short v39 = 3;
unsigned short v38 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v41;
unsigned short v42;
signed char v43;
v41 = -1 + -1;
v42 = v39 - v38;
v43 = v19 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 3: 
{
signed int v44;
v44 = v29 ();
history[history_index++] = (int)v44;
}
break;
case 5: 
{
signed char v45;
unsigned short v46;
signed char v47;
v45 = 1 - 3;
v46 = v39 - v36;
v47 = v19 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 7: 
{
signed char v48;
unsigned short v49;
signed char v50;
v48 = v40 - -1;
v49 = v38 - v39;
v50 = v19 (v48, v49);
history[history_index++] = (int)v50;
}
break;
case 9: 
{
signed int v51;
v51 = v29 ();
history[history_index++] = (int)v51;
}
break;
case 11: 
return v34;
default: abort ();
}
}
}
}

signed int v5 (unsigned int v52, unsigned int v53, unsigned int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -2;
unsigned int v56 = 2U;
unsigned short v55 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 1;
unsigned int v60 = 4U;
unsigned int v59 = 0U;
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
signed short v64;
unsigned short v65;
unsigned int v66;
signed char v67;
v64 = -4 - 1;
v65 = 0 + 2;
v66 = v33 - v33;
v67 = v1 (v64, v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
