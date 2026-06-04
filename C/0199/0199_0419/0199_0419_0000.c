#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, signed short, unsigned short, signed short);
static unsigned short (*v2) (unsigned short, signed short, unsigned short, signed short) = v1;
extern unsigned char v3 (signed int, signed char);
extern unsigned char (*v4) (signed int, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned short, signed short);
extern unsigned char (*v8) (unsigned short, signed short);
extern signed char v9 (signed short, signed char, signed int, unsigned int);
extern signed char (*v10) (signed short, signed char, signed int, unsigned int);
extern signed int v11 (unsigned short, signed char, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int);
extern signed short v13 (signed char, signed short);
extern signed short (*v14) (signed char, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed short v17 (unsigned int, signed char);
extern signed short (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed short, unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned short v21 (unsigned char, signed int, signed short);
extern unsigned short (*v22) (unsigned char, signed int, signed short);
extern signed short v23 (signed int, unsigned char, signed short);
extern signed short (*v24) (signed int, unsigned char, signed short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
void v27 (signed short, unsigned short, signed char, signed short);
void (*v28) (signed short, unsigned short, signed char, signed short) = v27;
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned char v32 = 4;
signed int v31 = 2;

void v27 (signed short v34, unsigned short v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 0;
signed int v39 = -3;
signed char v38 = -2;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v41, signed short v42, unsigned short v43, signed short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = -2;
unsigned char v46 = 5;
signed short v45 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v48;
signed char v49;
signed int v50;
v48 = 6 - 2;
v49 = -4 + -3;
v50 = v29 (v48, v49);
history[history_index++] = (int)v50;
}
break;
case 2: 
{
signed int v51;
signed char v52;
unsigned char v53;
v51 = 2 - v47;
v52 = 2 + -1;
v53 = v3 (v51, v52);
history[history_index++] = (int)v53;
}
break;
case 16: 
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
unsigned short v56;
signed short v57;
unsigned short v58;
signed short v59;
unsigned short v60;
v56 = 4 - 7;
v57 = -4 + 0;
v58 = 4 - 5;
v59 = 0 - -4;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
