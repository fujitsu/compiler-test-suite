#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern unsigned short v5 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned short (*v6) (unsigned short, signed int, unsigned char, unsigned short);
extern signed char v7 (unsigned int, signed char, unsigned int);
extern signed char (*v8) (unsigned int, signed char, unsigned int);
signed short v9 (unsigned char, unsigned char, unsigned char);
signed short (*v10) (unsigned char, unsigned char, unsigned char) = v9;
extern unsigned int v11 (signed short, signed char, unsigned short, unsigned short);
extern unsigned int (*v12) (signed short, signed char, unsigned short, unsigned short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed short v15 (unsigned int, unsigned short, signed int);
extern signed short (*v16) (unsigned int, unsigned short, signed int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern signed int v19 (unsigned char, unsigned short, signed int, signed short);
extern signed int (*v20) (unsigned char, unsigned short, signed int, signed short);
extern unsigned char v21 (unsigned char, unsigned char, signed char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
unsigned char v29 (unsigned char, signed short, signed char, signed int);
unsigned char (*v30) (unsigned char, signed short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed int v32 = 3;
signed int v31 = -4;

unsigned char v29 (unsigned char v34, signed short v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 3;
unsigned int v39 = 7U;
signed char v38 = -3;
trace++;
switch (trace)
{
case 5: 
return v34;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed int v43 = -2;
signed int v42 = -2;
signed int v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v44, unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -1;
signed char v48 = 1;
signed char v47 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 0U;
signed char v52 = 3;
signed char v51 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v54;
signed char v55;
v54 = 1 - 6;
v55 = v17 (v54);
history[history_index++] = (int)v55;
}
break;
case 9: 
{
unsigned char v56;
signed char v57;
v56 = 2 + 6;
v57 = v17 (v56);
history[history_index++] = (int)v57;
}
break;
case 11: 
return 1;
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
signed short v60;
unsigned int v61;
unsigned short v62;
unsigned short v63;
v60 = v33 - v33;
v61 = 7U + 2U;
v62 = 2 - 7;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
