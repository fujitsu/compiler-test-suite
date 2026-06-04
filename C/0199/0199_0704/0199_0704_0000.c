#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, signed short, unsigned short, signed char);
static void (*v2) (signed char, signed short, unsigned short, signed char) = v1;
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern void v7 (signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
unsigned char v13 (unsigned short);
unsigned char (*v14) (unsigned short) = v13;
unsigned char v15 (unsigned int, signed short);
unsigned char (*v16) (unsigned int, signed short) = v15;
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed int v19 (unsigned short, signed char);
extern signed int (*v20) (unsigned short, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned char, signed int);
extern unsigned short (*v24) (unsigned char, signed int);
extern unsigned short v25 (unsigned char, unsigned int, signed char);
extern unsigned short (*v26) (unsigned char, unsigned int, signed char);
extern unsigned int v27 (signed int, signed short, signed int, signed int);
extern unsigned int (*v28) (signed int, signed short, signed int, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned int v32 = 3U;
unsigned short v31 = 5;

unsigned char v15 (unsigned int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned int v37 = 3U;
signed short v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 5U;
unsigned short v41 = 6;
unsigned int v40 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed char v43, signed short v44, unsigned short v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 6;
signed short v48 = 0;
signed short v47 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v50;
signed char v51;
v50 = 1 - 0;
v51 = v3 (v50);
history[history_index++] = (int)v51;
}
break;
case 2: 
{
unsigned char v52;
unsigned int v53;
v52 = 4 + 1;
v53 = v17 (v52);
history[history_index++] = (int)v53;
}
break;
case 4: 
{
signed int v54;
signed short v55;
signed int v56;
signed int v57;
unsigned int v58;
v54 = -1 + -2;
v55 = v47 - v44;
v56 = -3 + 3;
v57 = 0 + 2;
v58 = v27 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
return;
case 7: 
{
signed int v59;
signed char v60;
v59 = -2 - 1;
v60 = v3 (v59);
history[history_index++] = (int)v60;
}
break;
case 9: 
{
unsigned char v61;
unsigned int v62;
v61 = 2 - 5;
v62 = v17 (v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return;
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
signed char v65;
signed short v66;
unsigned short v67;
signed char v68;
v65 = 2 + 2;
v66 = -2 + 1;
v67 = 1 + v31;
v68 = 3 + -2;
v1 (v65, v66, v67, v68);
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
