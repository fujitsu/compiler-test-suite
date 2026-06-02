#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (signed int, unsigned int, unsigned int, unsigned char);
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed int v9 (unsigned short, signed int, signed short, unsigned char);
signed int (*v10) (unsigned short, signed int, signed short, unsigned char) = v9;
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern void v13 (signed int, signed int);
extern void (*v14) (signed int, signed int);
signed short v15 (unsigned short, unsigned short);
signed short (*v16) (unsigned short, unsigned short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (unsigned short, unsigned short, signed short);
extern void (*v26) (unsigned short, unsigned short, signed short);
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed int v32 = -1;
signed short v31 = -3;

signed short v15 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 5;
signed char v37 = 0;
unsigned char v36 = 7;
trace++;
switch (trace)
{
case 1: 
return 3;
case 6: 
{
signed int v39;
v39 = v19 ();
history[history_index++] = (int)v39;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed int v9 (unsigned short v40, signed int v41, signed short v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -3;
signed short v45 = -4;
signed short v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 1U;
unsigned char v49 = 2;
signed char v48 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v51;
v51 = v19 ();
history[history_index++] = (int)v51;
}
break;
case 5: 
{
unsigned short v52;
unsigned short v53;
signed short v54;
v52 = 7 - 5;
v53 = 6 + 6;
v54 = v15 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 13: 
return 5;
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
signed int v57;
unsigned int v58;
unsigned int v59;
unsigned char v60;
signed char v61;
v57 = v32 - v32;
v58 = 3U + 4U;
v59 = 5U - 4U;
v60 = v33 + 4;
v61 = v1 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
