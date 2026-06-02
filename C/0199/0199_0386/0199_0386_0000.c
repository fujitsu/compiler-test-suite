#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, signed char);
extern unsigned short (*v2) (unsigned char, signed short, signed char);
extern signed int v3 (signed short, signed short);
extern signed int (*v4) (signed short, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
signed char v11 (unsigned int, signed char);
signed char (*v12) (unsigned int, signed char) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
extern signed short v17 (signed int, unsigned int);
extern signed short (*v18) (signed int, unsigned int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
unsigned char v21 (signed short, signed int, signed int);
unsigned char (*v22) (signed short, signed int, signed int) = v21;
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (signed int, unsigned short, signed short);
extern signed int (*v26) (signed int, unsigned short, signed short);
extern signed char v27 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v28) (unsigned int, unsigned short, signed short, unsigned int);
extern signed int v29 (signed short, signed int);
extern signed int (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = 1;
signed int v31 = 2;

unsigned char v21 (signed short v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 1U;
unsigned char v38 = 7;
unsigned int v37 = 1U;
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
unsigned char v42 = 4;
signed short v41 = -1;
unsigned char v40 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed int v43;
unsigned short v44;
signed short v45;
signed int v46;
v43 = -2 - -3;
v44 = 3 - 6;
v45 = v41 + -4;
v46 = v25 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 6: 
{
unsigned char v47;
v47 = v19 ();
history[history_index++] = (int)v47;
}
break;
case 7: 
return v42;
case 8: 
{
signed int v48;
unsigned short v49;
signed short v50;
signed int v51;
v48 = 2 - -4;
v49 = 2 - 4;
v50 = 2 + 2;
v51 = v25 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return v42;
default: abort ();
}
}
}
}

signed char v11 (unsigned int v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = 3;
signed int v55 = -1;
signed char v54 = -4;
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
unsigned char v59;
signed short v60;
signed char v61;
unsigned short v62;
v59 = 4 + 4;
v60 = 2 - v32;
v61 = -4 - v33;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
